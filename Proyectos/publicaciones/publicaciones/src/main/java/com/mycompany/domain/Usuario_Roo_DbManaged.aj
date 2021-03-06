// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.domain;

import com.mycompany.domain.Aviso;
import com.mycompany.domain.Publicacion;
import com.mycompany.domain.TipoDocumento;
import com.mycompany.domain.TipoPersona;
import com.mycompany.domain.Transaccion;
import com.mycompany.domain.Usuario;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Usuario_Roo_DbManaged {
    
    @OneToMany(mappedBy = "usuario")
    private Set<Aviso> Usuario.avisoes;
    
    @OneToMany(mappedBy = "usuario")
    private Set<Publicacion> Usuario.publicacions;
    
    @OneToMany(mappedBy = "usuario")
    private Set<Transaccion> Usuario.transaccions;
    
    @ManyToOne
    @JoinColumn(name = "tipo_persona", referencedColumnName = "codigo", nullable = false)
    private TipoPersona Usuario.tipoPersona;
    
    @ManyToOne
    @JoinColumn(name = "tipo_documento", referencedColumnName = "codigo", nullable = false)
    private TipoDocumento Usuario.tipoDocumento;
    
    @Column(name = "nombres", length = 50)
    @NotNull
    private String Usuario.nombres;
    
    @Column(name = "apellido_paterno", length = 30)
    @NotNull
    private String Usuario.apellidoPaterno;
    
    @Column(name = "apellido_materno", length = 30)
    @NotNull
    private String Usuario.apellidoMaterno;
    
    @Column(name = "sexo")
    @NotNull
    private Character Usuario.sexo;
    
    @Column(name = "numero_documento", length = 15)
    @NotNull
    private String Usuario.numeroDocumento;
    
    @Column(name = "correo", length = 50)
    @NotNull
    private String Usuario.correo;
    
    @Column(name = "telefono", length = 20)
    private String Usuario.telefono;
    
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Usuario.fechaNacimiento;
    
    @Column(name = "usuario", length = 20)
    @NotNull
    private String Usuario.usuario;
    
    @Column(name = "clave", length = 20)
    @NotNull
    private String Usuario.clave;
    
    public Set<Aviso> Usuario.getAvisoes() {
        return avisoes;
    }
    
    public void Usuario.setAvisoes(Set<Aviso> avisoes) {
        this.avisoes = avisoes;
    }
    
    public Set<Publicacion> Usuario.getPublicacions() {
        return publicacions;
    }
    
    public void Usuario.setPublicacions(Set<Publicacion> publicacions) {
        this.publicacions = publicacions;
    }
    
    public Set<Transaccion> Usuario.getTransaccions() {
        return transaccions;
    }
    
    public void Usuario.setTransaccions(Set<Transaccion> transaccions) {
        this.transaccions = transaccions;
    }
    
    public TipoPersona Usuario.getTipoPersona() {
        return tipoPersona;
    }
    
    public void Usuario.setTipoPersona(TipoPersona tipoPersona) {
        this.tipoPersona = tipoPersona;
    }
    
    public TipoDocumento Usuario.getTipoDocumento() {
        return tipoDocumento;
    }
    
    public void Usuario.setTipoDocumento(TipoDocumento tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }
    
    public String Usuario.getNombres() {
        return nombres;
    }
    
    public void Usuario.setNombres(String nombres) {
        this.nombres = nombres;
    }
    
    public String Usuario.getApellidoPaterno() {
        return apellidoPaterno;
    }
    
    public void Usuario.setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }
    
    public String Usuario.getApellidoMaterno() {
        return apellidoMaterno;
    }
    
    public void Usuario.setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }
    
    public Character Usuario.getSexo() {
        return sexo;
    }
    
    public void Usuario.setSexo(Character sexo) {
        this.sexo = sexo;
    }
    
    public String Usuario.getNumeroDocumento() {
        return numeroDocumento;
    }
    
    public void Usuario.setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }
    
    public String Usuario.getCorreo() {
        return correo;
    }
    
    public void Usuario.setCorreo(String correo) {
        this.correo = correo;
    }
    
    public String Usuario.getTelefono() {
        return telefono;
    }
    
    public void Usuario.setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public Date Usuario.getFechaNacimiento() {
        return fechaNacimiento;
    }
    
    public void Usuario.setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    
    public String Usuario.getUsuario() {
        return usuario;
    }
    
    public void Usuario.setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public String Usuario.getClave() {
        return clave;
    }
    
    public void Usuario.setClave(String clave) {
        this.clave = clave;
    }
    
}
