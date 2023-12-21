<template>
    <header>
    <h1>{{ title }}</h1>
    <nav>
    <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
    </ul>
    </nav>
    </header>
    </template>
     
    <script>
    export default {
    name: 'Header',
    props: {
    title: {
    type: String,
    required: true
    }
    }
    }
    </script>