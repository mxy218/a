.class Lcom/android/server/display/PersistentDataStore$Injector;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/display-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "display-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 703
    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/OutputStream;Z)V
    .registers 5

    .line 714
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_14

    .line 717
    check-cast p1, Ljava/io/FileOutputStream;

    .line 718
    if-eqz p2, :cond_e

    .line 719
    iget-object p2, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_13

    .line 721
    :cond_e
    iget-object p2, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 723
    :goto_13
    return-void

    .line 715
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

    .line 706
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

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

    .line 710
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
