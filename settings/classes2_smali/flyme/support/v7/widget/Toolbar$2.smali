.class Lflyme/support/v7/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/Toolbar;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar$2;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 209
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$2;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->showOverflowMenu()Z

    return-void
.end method
