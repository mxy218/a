.class public Lcom/meizu/settings/security/FlymeTrustAgentUtils;
.super Ljava/lang/Object;
.source "FlymeTrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;
    }
.end annotation


# direct methods
.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p0, :cond_13

    .line 34
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_13

    .line 35
    :cond_7
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;
    .registers 11

    const-string v0, "FlymeTrustAgentUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_ed

    .line 40
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_ed

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_f

    goto/16 :goto_ed

    .line 43
    :cond_f
    new-instance v2, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;

    invoke-direct {v2}, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;-><init>()V

    .line 47
    :try_start_14
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v4, "android.service.trust.trustagent"

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_a0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_1c} :catch_91
    .catchall {:try_start_14 .. :try_end_1c} :catchall_89

    if-nez v3, :cond_29

    :try_start_1e
    const-string p0, "Can\'t find android.service.trust.trustagent meta-data"

    .line 49
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_23} :catch_86
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_23} :catch_80
    .catchall {:try_start_1e .. :try_end_23} :catchall_7e

    if-eqz v3, :cond_28

    .line 78
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_28
    return-object v1

    .line 52
    :cond_29
    :try_start_29
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 53
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 55
    :goto_35
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_40

    if-eq v5, v6, :cond_40

    goto :goto_35

    .line 58
    :cond_40
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "trust-agent"

    .line 59
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string p0, "Meta-data does not start with trust-agent tag"

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_51} :catch_86
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_51} :catch_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_51} :catch_80
    .catchall {:try_start_29 .. :try_end_51} :catchall_7e

    if-eqz v3, :cond_56

    .line 78
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_56
    return-object v1

    .line 63
    :cond_57
    :try_start_57
    sget-object v5, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 64
    invoke-virtual {p0, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_6e} :catch_86
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6e} :catch_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_6e} :catch_80
    .catchall {:try_start_57 .. :try_end_6e} :catchall_7e

    .line 70
    :try_start_6e
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_71} :catch_7c
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_78
    .catchall {:try_start_6e .. :try_end_71} :catchall_7e

    if-eqz v3, :cond_76

    .line 78
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_76
    move-object p0, v1

    goto :goto_a6

    :catch_78
    move-exception p0

    goto :goto_94

    :catch_7a
    move-exception p0

    goto :goto_9d

    :catch_7c
    move-exception p0

    goto :goto_a3

    :catchall_7e
    move-exception p0

    goto :goto_8b

    :catch_80
    move-exception p0

    move-object v4, v1

    goto :goto_94

    :catch_83
    move-exception p0

    move-object v4, v1

    goto :goto_9d

    :catch_86
    move-exception p0

    move-object v4, v1

    goto :goto_a3

    :catchall_89
    move-exception p0

    move-object v3, v1

    :goto_8b
    if-eqz v3, :cond_90

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_90
    throw p0

    :catch_91
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_94
    if-eqz v3, :cond_a6

    :goto_96
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_a6

    :catch_9a
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_9d
    if-eqz v3, :cond_a6

    goto :goto_96

    :catch_a0
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_a3
    if-eqz v3, :cond_a6

    goto :goto_96

    :cond_a6
    :goto_a6
    if-eqz p0, :cond_c1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_c1
    if-eqz v4, :cond_e3

    const/16 p0, 0x2f

    .line 84
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_e3

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_e3
    if-nez v4, :cond_e6

    goto :goto_ea

    .line 87
    :cond_e6
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_ea
    iput-object v1, v2, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    return-object v2

    :cond_ed
    :goto_ed
    return-object v1
.end method
