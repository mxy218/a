.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 129
    :cond_5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 120
    :cond_5
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 112
    :cond_5
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 104
    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 80
    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .registers 4

    .line 93
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 96
    :cond_5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 88
    :cond_5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .registers 5

    .line 69
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 44
    :cond_5
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 53
    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 4

    .line 59
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 62
    :cond_5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
