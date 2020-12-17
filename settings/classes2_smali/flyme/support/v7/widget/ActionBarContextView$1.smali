.class Lflyme/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/ActionBarContextView;->initForMode(Lflyme/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ActionBarContextView;

.field final synthetic val$mode:Lflyme/support/v7/view/ActionMode;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/ActionBarContextView;Lflyme/support/v7/view/ActionMode;)V
    .registers 3

    .line 231
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$1;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Lflyme/support/v7/widget/ActionBarContextView$1;->val$mode:Lflyme/support/v7/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 233
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView$1;->val$mode:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->finish()V

    return-void
.end method
