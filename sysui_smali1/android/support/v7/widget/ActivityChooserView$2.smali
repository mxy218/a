.class Landroid/support/v7/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .registers 2

    .line 148
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 153
    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    goto :goto_2d

    .line 155
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 156
    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_2d
    :goto_2d
    return-void
.end method
