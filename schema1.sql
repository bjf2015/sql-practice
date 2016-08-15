create table if not exists recipes (
    id serial primary key,
    name text not null,
    description text not null
);

create table if not exists tags (
    id serial primary key,
    tag text not null
);

create table if not exists steps (
    step text not null,
    recipe_id integer references recipes,
    tags_id integer references tags,
    primary key(recipe_id, tags_id)
);
    