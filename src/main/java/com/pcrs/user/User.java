package com.pcrs.user;

import com.pcrs.article.Post;
import com.pcrs.model.NameEntity;
import com.pcrs.pcprofile.PcProfile;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "user")
public class User extends NameEntity {

    @Column(name = "username")
    private String username = new String();

    @Column(name = "password")
    private String password = new String();

    @Column(name = "mail")
    private String gmail = new String();

    @Column(name = "role")
    private String role = new String();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "user")
    private List<PcProfile> pcProfile;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "user")
    private List<Post> posts;

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public List<PcProfile> getPcProfile() {
        return pcProfile;
    }

    public void setPcProfile(List<PcProfile> pcProfile) {
        this.pcProfile = pcProfile;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}