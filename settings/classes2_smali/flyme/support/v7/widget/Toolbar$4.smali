.class Lflyme/support/v7/widget/Toolbar$4;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/Toolbar;->ensureCollapseButtonView()V
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

    .line 1176
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar$4;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1179
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$4;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lflyme/support/v7/widget/Toolbar;->collapseActionView()V

    return-void
.end method
