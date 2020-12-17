.class Lcom/android/server/display/LocalDisplayAdapter$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aodDisplay:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/LocalDisplayAdapter;

    .line 952
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const-string v0, "/sys/class/meizu/lcm/display/doze_s2"

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->aodDisplay:Ljava/lang/String;

    return-void
.end method

.method private openAodDisplay()V
    .registers 6

    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->aodDisplay:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 963
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 964
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/MzDisplayUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/MzDisplayUtils;->setAODShownAfterScreenOff(Z)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_23
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    .line 969
    nop

    .line 971
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 973
    :goto_1e
    goto :goto_57

    .line 972
    :catch_1f
    move-exception v1

    goto :goto_1e

    .line 969
    :catchall_21
    move-exception v1

    goto :goto_58

    .line 965
    :catch_23
    move-exception v1

    .line 966
    .local v1, "e":Ljava/io/IOException;
    :try_start_24
    const-string v2, "LocalDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->aodDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$1;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/MzDisplayUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/MzDisplayUtils;->setAODShownAfterScreenOff(Z)V
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_21

    .line 969
    .end local v1  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_57

    .line 971
    :try_start_53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_1f

    goto :goto_1e

    .line 976
    :cond_57
    :goto_57
    return-void

    .line 969
    :goto_58
    if-eqz v0, :cond_5f

    .line 971
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 973
    goto :goto_5f

    .line 972
    :catch_5e
    move-exception v2

    .line 973
    :cond_5f
    :goto_5f
    throw v1
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 955
    const-string v0, "LocalDisplayAdapter"

    const-string v1, " open aod display "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$1;->openAodDisplay()V

    .line 957
    return-void
.end method
