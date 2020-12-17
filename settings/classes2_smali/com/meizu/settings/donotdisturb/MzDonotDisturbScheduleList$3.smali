.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$3;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->initRecylerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$3;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
    .registers 13

    .line 246
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    if-nez p1, :cond_f

    goto :goto_45

    .line 250
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    .line 251
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 252
    iget-object p2, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    const-string p3, "extra_rule"

    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    const-string p2, "extra_rule_id"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "extra_add_schedule"

    .line 254
    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$3;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 256
    const-class p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void

    :cond_45
    :goto_45
    const-string p0, "MzDonotDisturbScheduleList"

    const-string p1, "onItemClick view tag invalid"

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
