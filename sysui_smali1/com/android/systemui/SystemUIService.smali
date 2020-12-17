.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static dumpServices([Lcom/android/systemui/SystemUI;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p3, :cond_39

    .line 74
    array-length v1, p3

    if-nez v1, :cond_7

    goto :goto_39

    .line 86
    :cond_7
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-class v2, Lcom/android/systemui/Dependency;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 88
    invoke-static {p1, p2, p3}, Lcom/android/systemui/Dependency;->staticDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 90
    :cond_1c
    array-length v2, p0

    :goto_1d
    if-ge v0, v2, :cond_8f

    aget-object v3, p0, v0

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 93
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 75
    :cond_39
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumping service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/android/systemui/Dependency;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {p1, p2, p3}, Lcom/android/systemui/Dependency;->staticDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 77
    array-length v1, p0

    :goto_57
    if-ge v0, v1, :cond_7b

    aget-object v3, p0, v0

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 81
    :cond_7b
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_8f

    const-string p0, "dumping plugins:"

    .line 82
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-class p0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_8f
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 69
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/SystemUIService;->dumpServices([Lcom/android/systemui/SystemUI;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 3

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 42
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    const-string v1, "debug.crash_sysui"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_20

    .line 43
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 46
    :cond_20
    :goto_20
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x3e8

    const/16 v1, 0x384

    .line 49
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 50
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    sget-object p0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 58
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    .line 50
    invoke-static {v0, p0}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    :cond_3f
    return-void
.end method
