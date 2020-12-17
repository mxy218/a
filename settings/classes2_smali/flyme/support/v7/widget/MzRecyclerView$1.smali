.class Lflyme/support/v7/widget/MzRecyclerView$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView;->startMultiChoice()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .registers 2

    .line 1490
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$1;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1492
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$1;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method
