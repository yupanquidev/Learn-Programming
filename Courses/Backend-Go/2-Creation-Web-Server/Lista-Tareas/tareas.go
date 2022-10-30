package main

import "fmt"

type taskList struct {
	// Slices
	tasks []*task
}

func (t *taskList) addList(tl *task) {
	t.tasks = append(t.tasks, tl)
}

func (t *taskList) imputlist() {
	for _, tarea := range t.tasks {
		fmt.Println("Nombre:", tarea.name)
		fmt.Println("Nombre:", tarea.description)
	}
}

func (t *taskList) completelist() {
	for _, tarea := range t.tasks {
		if tarea.complete {
			fmt.Println("Nombre:", tarea.name)
			fmt.Println("Nombre:", tarea.description)
		}
	}
}

type task struct {
	name        string
	description string
	complete    bool
}

func (t *task) markComplete() {
	t.complete = true
}

func (t *task) updateDescription(description string) {
	t.description = description
}

func (t *task) updateName(name string) {
	t.name = name
}

func (t *taskList) deleteList(index int) {
	t.tasks = append(t.tasks[:index], t.tasks[index+1:]...)
}

func main() {
	t1 := &task{
		name:        "Completar el curso de Go",
		description: "Completar el curso de Go en esta seman",
	}

	t2 := &task{
		name:        "Completar el curso de python",
		description: "Completar el curso de python en esta semana",
	}

	t3 := &task{
		name:        "Completar el curso de typescript",
		description: "Completar el curso de typescript en esta semana",
	}

	lista := &taskList{
		tasks: []*task{
			t1, t2,
		},
	}

	lista.addList(t3)
	lista.imputlist()
	lista.tasks[0].markComplete()
	//fmt.Println("tareas completadas")
	lista.completelist()

	mapTask := make(map[string]*taskList)
	mapTask["Yupanqui"] = lista

	t4 := &task{
		name:        "Completar el curso de rust",
		description: "Completar el curso de rust en esta seman",
	}

	t5 := &task{
		name:        "Completar el curso de java",
		description: "Completar el curso de java en esta semana",
	}

	lista2 := &taskList{
		tasks: []*task{
			t4, t5,
		},
	}

	mapTask["Richar"] = lista2

	fmt.Println("Tareas de Yupanqui")
	mapTask["Yupanqi"].imputlist()
	fmt.Println("Tareas de Richar")
	mapTask["Richar"].imputlist()
}
