.class Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;
.super Ljava/lang/Object;
.source "DndAppNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

.field final synthetic val$s:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;Landroid/widget/CheckBox;)V
    .registers 3

    .line 144
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;->val$s:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;->val$s:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
