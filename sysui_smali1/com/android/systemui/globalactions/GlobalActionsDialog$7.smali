.class Lcom/android/systemui/globalactions/GlobalActionsDialog$7;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUsersToMenu(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field final synthetic val$user:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V
    .registers 6

    .line 871
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->val$user:Landroid/content/pm/UserInfo;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 3

    .line 874
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->val$user:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception p0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t switch user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalActionsDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
