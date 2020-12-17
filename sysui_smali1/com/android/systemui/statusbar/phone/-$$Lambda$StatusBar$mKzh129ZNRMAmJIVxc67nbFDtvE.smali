.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$1:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startPendingIntentDismissingKeyguard$32$StatusBar(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
