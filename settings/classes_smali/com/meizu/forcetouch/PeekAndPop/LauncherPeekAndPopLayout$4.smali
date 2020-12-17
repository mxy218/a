.class Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$4;
.super Ljava/lang/Object;
.source "LauncherPeekAndPopLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$4;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$4;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHasForceTouched:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHasForceTouched:Z

    :cond_9
    return-void
.end method
