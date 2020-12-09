.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 6

    .line 745
    const/16 v0, 0x64

    if-ltz p1, :cond_25

    if-ge p1, v0, :cond_25

    .line 747
    int-to-double v0, p1

    const-wide/high16 v2, 0x4054000000000000L  # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 748
    add-int/lit8 p1, p1, 0x14

    .line 749
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104060e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 751
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_3c

    .line 752
    :cond_25
    if-ne p1, v0, :cond_3c

    .line 753
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040610

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 755
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_3d

    .line 752
    :cond_3c
    :goto_3c
    nop

    .line 759
    :goto_3d
    return-void
.end method
