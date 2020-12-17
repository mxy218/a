.class Lcom/meizu/settings/deviceinfo/FlymeStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 138
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$000(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/preference/Preference;

    move-result-object p1

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$100(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/meizu/settings/utils/MzUtils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method
