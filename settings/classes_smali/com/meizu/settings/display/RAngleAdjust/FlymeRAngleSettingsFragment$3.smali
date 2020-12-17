.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;
.super Ljava/lang/Object;
.source "FlymeRAngleSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->showTipsDialog(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

.field final synthetic val$holder:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

.field final synthetic val$saveStatusBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;Landroid/widget/CheckBox;Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V
    .registers 4

    .line 104
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->val$saveStatusBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->val$holder:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->val$saveStatusBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->setShowTipsDialog(Z)V

    .line 110
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$3;->val$holder:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 p2, 0x1

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    return-void
.end method
