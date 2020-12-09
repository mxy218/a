.class Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtomicFileStorage"
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    new-instance v1, Ljava/io/File;

    const-string v2, "display_settings.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 702
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->copyVendorSettings(Ljava/io/File;)V

    .line 704
    :cond_1e
    new-instance v0, Landroid/util/AtomicFile;

    const-string v2, "wm-displays"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 705
    return-void
.end method

.method private static copyVendorSettings(Ljava/io/File;)V
    .registers 4

    .line 708
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 712
    :try_start_11
    invoke-static {v0, p0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 715
    goto :goto_1d

    .line 713
    :catch_15
    move-exception p0

    .line 714
    const-string p0, "WindowManager"

    const-string v0, "Failed to copy vendor display_settings.xml"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/OutputStream;Z)V
    .registers 5

    .line 731
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_14

    .line 734
    check-cast p1, Ljava/io/FileOutputStream;

    .line 735
    if-eqz p2, :cond_e

    .line 736
    iget-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_13

    .line 738
    :cond_e
    iget-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 740
    :goto_13
    return-void

    .line 732
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected OutputStream as argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public openRead()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
