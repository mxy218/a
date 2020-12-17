.class Lflyme/support/v7/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 225
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    return-void
.end method
