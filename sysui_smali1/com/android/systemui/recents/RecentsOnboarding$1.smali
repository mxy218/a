.class Lcom/android/systemui/recents/RecentsOnboarding$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "RecentsOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method private onAppLaunch()V
    .registers 6

    .line 139
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 144
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    .line 145
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void

    .line 148
    :cond_25
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-void

    .line 151
    :cond_34
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    .line 152
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    if-ne v0, v3, :cond_e6

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    .line 155
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v2

    if-eqz v0, :cond_5c

    if-eqz v2, :cond_5c

    .line 157
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    return-void

    :cond_5c
    if-nez v0, :cond_ac

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_eb

    .line 165
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$400(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 167
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_79

    return-void

    :cond_79
    if-gt v0, v3, :cond_7d

    const/4 v0, 0x5

    goto :goto_7f

    :cond_7d
    const/16 v0, 0x28

    .line 177
    :goto_7f
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$608(Lcom/android/systemui/recents/RecentsOnboarding;)I

    .line 178
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v2

    if-lt v2, v0, :cond_9a

    .line 180
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$602(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    goto :goto_a4

    :cond_9a
    move v0, v1

    goto :goto_a4

    .line 184
    :cond_9c
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    :goto_a4
    if-eqz v0, :cond_eb

    .line 187
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_eb

    .line 191
    :cond_ac
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_eb

    .line 192
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 193
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1000(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    if-lt v0, v2, :cond_d4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1002(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    goto :goto_de

    :cond_d4
    move v0, v1

    goto :goto_de

    .line 199
    :cond_d6
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    :goto_de
    if-eqz v0, :cond_eb

    .line 202
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_eb

    .line 208
    :cond_e6
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_eb
    :goto_eb
    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 2

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method
