import { Check } from "phosphor-react";

export function NewHabitForm(){
  return (
    <form>
      <label htmlFor="title">
        Qual seu compremetimento?
      </label>

      <input type="text" 
        id="title"
        placeholder="ex.: Exercícios, dormir bem, etc..."
        autoFocus
      
        />
      <label htmlFor="">
        Qual a recorrência
      </label>

      {/* <input type="text" 
        id="title"
        placeholder="ex.: Exercícios, dormir bem, etc..."
        autoFocus
      
        /> */}

        <button>
          <Check size={20} weight='bold' />
          Confirmar 
        </button>

    </form>
  )
}