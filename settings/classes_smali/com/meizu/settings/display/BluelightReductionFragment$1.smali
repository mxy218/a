.class Lcom/meizu/settings/display/BluelightReductionFragment$1;
.super Landroid/database/ContentObserver;
.source "BluelightReductionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/BluelightReductionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/BluelightReductionFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BluelightReductionFragment;Landroid/os/Handler;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 56
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "immediately_on_or_off"

    .line 57
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "BluelightReductionFragment"

    if-eqz p1, :cond_48

    .line 58
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$000(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$100(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 60
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$200(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BlueLightReductionPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/settings/display/BlueLightReductionPreference;->setBlueligthReductionEnabled(Z)V

    .line 61
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$300(Lcom/meizu/settings/display/BluelightReductionFragment;)V

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IMMEDIATELY_ON_OR_OFF ---> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_153

    :cond_48
    const-string/jumbo p1, "time_config_type"

    .line 63
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 64
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result p1

    .line 65
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$500(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$500(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$500(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_a1

    .line 68
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$600(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$700(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_cb

    .line 71
    :cond_a1
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$600(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$700(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-nez p1, :cond_cb

    .line 75
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightEnable(Landroid/content/Context;Z)V

    .line 78
    :cond_cb
    :goto_cb
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;)V

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TIME_CONFIG_TYPE ---> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 80
    :cond_e9
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isSupportForestGreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_145

    const-string p1, "blue_reduction_config_type"

    .line 81
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result p1

    .line 83
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$800(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_128

    .line 84
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$800(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    :cond_128
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$800(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$800(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$200(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BlueLightReductionPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->updateCurrentModeIdBaseline()V

    goto :goto_153

    .line 89
    :cond_145
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$1;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$500(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->refresh()V

    const-string p0, "Oher ---> "

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_153
    return-void
.end method
