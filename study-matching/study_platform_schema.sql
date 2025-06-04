
-- USERS 테이블
create table users (
  id uuid primary key references auth.users(id),
  email text unique not null,
  nickname text not null,
  bio text,
  interest_area text,
  location text,
  created_at timestamp with time zone default now()
);

-- STACKS 테이블
create table stacks (
  id serial primary key,
  name text not null,
  category text
);

-- USER_STACKS 테이블
create table user_stacks (
  user_id uuid references users(id),
  stack_id int references stacks(id),
  added_at timestamp with time zone default now(),
  primary key (user_id, stack_id)
);

-- STUDY_GROUPS 테이블
create table study_groups (
  id uuid primary key,
  title text not null,
  description text,
  topic text,
  leader_id uuid references users(id),
  max_members int,
  location text,
  created_at timestamp with time zone default now()
);

-- GROUP_STACKS 테이블
create table group_stacks (
  group_id uuid references study_groups(id),
  stack_id int references stacks(id),
  primary key (group_id, stack_id)
);

-- GROUP_MEMBERS 테이블
create table group_members (
  group_id uuid references study_groups(id),
  user_id uuid references users(id),
  joined_at timestamp with time zone default now(),
  is_approved boolean default true,
  primary key (group_id, user_id)
);

-- POSTS 테이블
create table posts (
  id uuid primary key,
  group_id uuid references study_groups(id),
  user_id uuid references users(id),
  title text,
  content text,
  created_at timestamp with time zone default now()
);

-- COMMENTS 테이블
create table comments (
  id uuid primary key,
  post_id uuid references posts(id),
  user_id uuid references users(id),
  content text,
  created_at timestamp with time zone default now()
);
