# Learn PERN + TypeScript Repository

A starter-kit for getting started with the PERN + TypeScript technology stack.

## What is PERN

PERN stands for **P**ostgreSQL, **E**xpress.js, **R**eact.js, and **N**ode.js. These technologies are extremely common in the modern world of web development, and this repository is meant to help get you more acquainted with each.

## What is TypeScript

TypeScript, in a sentence, is "JavaScript with strong types." This definition is loosely accurate, and the major goal of it is to help make our code more predictable and safe. Consider this example:

```js
const res = 1 + true;
console.log(res);
```

You may expect an error to happen here, but JavaScript will "type-coerce" the `true` value into a `1`, resulting in the code printing `2`. It looks at this code and says "I don't know how to add a number and a Boolean, but I know how to make a Boolean into a number (`false` -> `0`, `true` -> `1`), so I'll do that and then add them!"

While this example may seem trivial to fix, this type of error may be far more difficult to detect. For instance, try finding the issue in this code:

```js
const userId = document
    .cookie
    .split(";")
    .find((cookie) => cookie.includes("userId="))
    .split("=")
    [1];
const response = await fetch(
    `https://website-api.com/api/v2/users/${userId}`,
    { method: "GET" }
);
const user = await response.json();
document.getElementById("name").innerText = user.name.toUpperCase();
```

(Hint: Are we guaranteed that `user.name` will always be defined? What if the user ID is not found?)

TypeScript allows us to annotate & parameterize our functions in a way that helps make these kinds of problems easier to spot by making these compile-time errors, rather than runtime errors. In the above example, TypeScript could have detected that `user.name` is potentially undefined and required us to handle that more explicitly, like so:

```js
// ... the rest of the code ...
const user = await response.json();
if (user.name && typeof(user.name) === "string") {
    document.getElementById("name").innerText = user.name.toUpperCase();
} else {
    document.getElementById("name").innerText = "User name not found";
}
```

## Additional Technologies

While the above technologies alone are quite powerful, it is very common for developers these days to use frameworks that expand upon these. For instance, writing SQL in the back-end can become pretty tedious to manage with having to translate between TypeScript and SQL, but Prisa ORM offers several features that help you manage & update your database within the TypeScript ecosystem.

To keep pace with modern web development, this repository includes some additional libraries and tools that are fairly common in web development:

1. NPM (Node Package Manager) - This tool allows you to add, remove, and update dependencies on others' projects. Sometimes features you want to build have already been built by others, and you can include their code in your project (for free!) by listing it as a dependency for your project. Learn more about it [here](https://nodejs.org/en/learn/getting-started/an-introduction-to-the-npm-package-manager).
2. Docker - This is a containerization tool that allows you to virtualize your local development servers. This eliminates issues related to "Well, it worked on my machine...", which helps with collaboration between programmers, and it allows you to startup the project with one command: `docker-compose up`. To learn more, check out [this website](https://www.baeldung.com/ops/docker-compose). If you just want to get started without learning much about Docker yet, you can skip to section 7.1.
3. GitHub - This is a version control software ("VCS") that is omnipresent within development. It assists with producing various features, collaborating with other developers, and enabling code review, among other tasks. If this is a new technology for you, I suggest checking out a tutorial like [this one](https://docs.github.com/en/get-started/start-your-journey/hello-world).
4. Next.js - This is a React.js framework that provides all sorts of features. Next.js is already configured for you and can be found in the `/client` directory. [Here is a tutorial](https://www.tutorialspoint.com/nextjs/index.htm) on how to get started. Also note that the Docker container starts the front-end server for you.
5. Prisma ORM - This is a TypeScript wrapper around database interactions. Prisma supports many different types of databases, but this project is already configured for you with PostgreSQL in mind.

## Getting Started

### Initialize `.env` Files for `/client` & `/server` Projects

### Setting up Docker

## Next Steps

### How to Deploy