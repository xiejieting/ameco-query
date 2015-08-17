package com.xy.account.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * Created by changwei on 2015/8/14.
 */

@Entity
@Table(name = "employees")
public class Employee {

    @Id
    @GeneratedValue
    private Integer id;
    @Size(min = 6, max = 20, message = "Username must be between 6 and 20 character long.")
    @NotNull(message = "Username can't be null.")
    private String employee_name;
    @Size(min = 4, max = 20, message = "ID must be between 4 and 20 character long.")
    private String employee_id;
    @Pattern(regexp = "[\\d]{11}$", message = "Mobile Phone must be Length 11.")
    private String employee_mobile;
    private String employee_department;
    private String employee_spell;

    public Employee() {
    }

    public Employee(String employee_name, String employee_id, String employee_mobile, String employee_department, String employee_spell) {
        this.employee_name = employee_name;
        this.employee_id = employee_id;
        this.employee_mobile = employee_mobile;
        this.employee_department = employee_department;
        this.employee_spell = employee_spell;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmployee_name() {
        return employee_name;
    }

    public void setEmployee_name(String employee_name) {
        this.employee_name = employee_name;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    public String getEmployee_mobile() {
        return employee_mobile;
    }

    public void setEmployee_mobile(String employee_mobile) {
        this.employee_mobile = employee_mobile;
    }

    public String getEmployee_department() {
        return employee_department;
    }

    public void setEmployee_department(String employee_department) {
        this.employee_department = employee_department;
    }

    public String getEmployee_spell() {
        return employee_spell;
    }

    public void setEmployee_spell(String employee_spell) {
        this.employee_spell = employee_spell;
    }
}

