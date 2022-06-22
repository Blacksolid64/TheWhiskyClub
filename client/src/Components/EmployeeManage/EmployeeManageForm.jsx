import React, { Fragment} from 'react'
import { EmployeCard } from './EmployeCard'

export function EmployeeManageForm({props}) {

    return (
        <Fragment>
            <div className="col">
                <div className="card border-dark text-center h-100">
                    <div className="card-body">
                        <h2 className="card-title text-dark">{props.title}</h2>
                        <p className="card-text">{props.body ? props.text : ""}</p>
                        <EmployeCard props={{action:props.action, buttonTitle:props.buttonTitle,store:props.store}} />
                    </div>                                                       
                </div>
            </div>
        </Fragment>
    )
}
