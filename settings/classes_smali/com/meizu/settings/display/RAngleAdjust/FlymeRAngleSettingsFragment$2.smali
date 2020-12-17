.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;
.super Ljava/lang/Object;
.source "FlymeRAngleSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

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

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "pos:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p4, "test"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-le p3, p1, :cond_3d

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

    .line 83
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->access$200(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    invoke-static {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;->access$300(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;)V

    goto :goto_3d

    .line 86
    :cond_2f
    iget-object p0, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    :cond_3d
    :goto_3d
    return-void
.end method
