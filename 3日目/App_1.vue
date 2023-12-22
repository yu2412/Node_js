<script setup>
import { ref } from 'vue'
import moment from "moment"
moment.locale("ja")

// give each todo a unique id
let id = 0

const newtask = ref('')
const limit=('')
const todos = ref([

])

function addTodo() {
  const limitTime= moment(limit.value).format('YYYY/MM/DD HH:mm')
  todos.value.push({ id: moment(new Date).format('YYYY/MM/DD HH:mm'), text: "[予定]："+newtask.value +"　[期限]："+limitTime})
  newtask.value = ''
}

function removeTodo(todo) {
  todos.value = todos.value.filter((t) => t !== todo)
}
</script>

<template>
  <form @submit.prevent="addTodo">
    <input v-model="newtask" placeholder="追加する予定">
    <input type="date" v-model="limit">
    <button>追加</button>
  </form>
  <ul>
    <li v-for="todo in todos" :key="todo.id">
      {{ todo.text }}
      <button @click="removeTodo(todo)">削除</button>
    </li>
  </ul>
</template>