from fastapi import APIRouter, Path
from model import Todo


todo_router = APIRouter()

# Временная база
todo_list = []


# Добавление задач
@todo_router.post("/todo")
async def add_todo(todo: Todo):
    todo_list.append(todo)
    return {"message": "Todo added successfully"}


# Извлечение
@todo_router.get("/todo")
async def retrieve_todos():
    return {"todos": todo_list}

# Добавление нового маршрута для получения одной задачи.
@todo_router.get("/todo/{todo_id}")  # параметр пути
async def get_single_todo(todo_id: int = Path(..., title="The ID of the todo to retrieve."))
    for todo in todo_list:
        if todo_id == todo_id:
            return {"todo": todo}
    return {"message": "Todo with supplied ID doesn't exist"}
