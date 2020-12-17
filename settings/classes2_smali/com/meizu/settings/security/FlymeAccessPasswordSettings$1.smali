.class Lcom/meizu/settings/security/FlymeAccessPasswordSettings$1;
.super Ljava/lang/Object;
.source "FlymeAccessPasswordSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$1;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x2

    if-le p3, p1, :cond_23

    .line 75
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$1;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->access$000(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppLockOn()Z

    move-result p0

    if-nez p0, :cond_12

    return-void

    .line 80
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    .line 81
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_23
    return-void
.end method
