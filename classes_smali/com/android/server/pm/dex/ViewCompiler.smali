.class public Lcom/android/server/pm/dex/ViewCompiler;
.super Ljava/lang/Object;
.source "ViewCompiler.java"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    .line 34
    return-void
.end method


# virtual methods
.method public compileLayouts(Landroid/content/pm/PackageParser$Package;)Z
    .registers 9

    .line 38
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 39
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 40
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/code_cache/compiled_view.dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compiling layouts in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_5b

    .line 46
    :try_start_43
    iget-object v5, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_56

    .line 47
    :try_start_46
    iget-object v6, p0, Lcom/android/server/pm/dex/ViewCompiler;->mInstaller:Lcom/android/server/pm/Installer;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v1, v0, v2, p1}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_53

    .line 51
    :try_start_4f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5b

    .line 47
    return p1

    .line 49
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 51
    :catchall_56
    move-exception p1

    :try_start_57
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 53
    :catchall_5b
    move-exception p1

    .line 54
    const-string v0, "PackageManager"

    const-string v1, "Failed to compile layouts"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 p1, 0x0

    return p1
.end method
