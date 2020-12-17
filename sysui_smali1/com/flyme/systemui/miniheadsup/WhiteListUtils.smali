.class public Lcom/flyme/systemui/miniheadsup/WhiteListUtils;
.super Ljava/lang/Object;
.source "WhiteListUtils.java"


# static fields
.field private static DINGTALK_AUDIO:Landroid/content/ComponentName;

.field private static DINGTALK_VIDEO:Landroid/content/ComponentName;

.field private static QQ_NOTIFICATION:Landroid/content/ComponentName;

.field private static QQ_VIDEO:Landroid/content/ComponentName;

.field private static TIM_AV:Landroid/content/ComponentName;

.field private static TIM_SCHEDULE:Landroid/content/ComponentName;

.field private static TIM_VCHAT:Landroid/content/ComponentName;

.field private static TIM_VIDEO:Landroid/content/ComponentName;

.field private static WEIXIN_LOGIN:Landroid/content/ComponentName;

.field private static WEIXIN_MULTI_TALK:Landroid/content/ComponentName;

.field private static WEIXIN_VIDEO:Landroid/content/ComponentName;

.field private static mSpecialComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_VIDEO:Landroid/content/ComponentName;

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_MULTI_TALK:Landroid/content/ComponentName;

    .line 14
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm.plugin.webwx.ui.ExtDeviceWXLoginUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_LOGIN:Landroid/content/ComponentName;

    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.av.ui.VideoInviteActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->QQ_VIDEO:Landroid/content/ComponentName;

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mobileqq.activity.NotificationActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->QQ_NOTIFICATION:Landroid/content/ComponentName;

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.tim"

    const-string v2, "com.tencent.av.ui.VChatActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_VCHAT:Landroid/content/ComponentName;

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_VIDEO:Landroid/content/ComponentName;

    .line 20
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.tencent.av.ui.AVActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_AV:Landroid/content/ComponentName;

    .line 21
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "cooperation.dingdong.data.ScheduleTipsDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_SCHEDULE:Landroid/content/ComponentName;

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.alibaba.android.rimet"

    const-string v2, "com.alibaba.android.teleconf.activities.TeleConfWaitingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->DINGTALK_AUDIO:Landroid/content/ComponentName;

    .line 24
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.alibaba.android.teleconf.mozi.activity.TeleVideoConfActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->DINGTALK_VIDEO:Landroid/content/ComponentName;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    .line 30
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_VIDEO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_MULTI_TALK:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->WEIXIN_LOGIN:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->QQ_VIDEO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->QQ_NOTIFICATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_VCHAT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_VIDEO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_AV:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->TIM_SCHEDULE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->DINGTALK_AUDIO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->DINGTALK_VIDEO:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static checkWhiteList(Landroid/content/Intent;)Z
    .registers 4

    if-eqz p0, :cond_7

    .line 45
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    move v1, v0

    .line 49
    :goto_d
    sget-object v2, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 50
    sget-object v2, Lcom/flyme/systemui/miniheadsup/WhiteListUtils;->mSpecialComponent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v0, 0x1

    goto :goto_28

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_28
    :goto_28
    return v0
.end method
