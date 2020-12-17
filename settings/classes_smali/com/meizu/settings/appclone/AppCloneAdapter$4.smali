.class Lcom/meizu/settings/appclone/AppCloneAdapter$4;
.super Ljava/lang/Object;
.source "AppCloneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/appclone/AppCloneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

.field final synthetic val$s:Lcom/meizu/common/widget/Switch;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/common/widget/Switch;)V
    .registers 3

    .line 208
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$4;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$4;->val$s:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$4;->val$s:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(Z)V

    return-void
.end method
