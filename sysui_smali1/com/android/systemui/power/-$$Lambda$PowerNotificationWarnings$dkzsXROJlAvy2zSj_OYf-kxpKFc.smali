.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$dkzsXROJlAvy2zSj_OYf-kxpKFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$dkzsXROJlAvy2zSj_OYf-kxpKFc;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$dkzsXROJlAvy2zSj_OYf-kxpKFc;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showUsbHighTemperatureAlarmInternal$5$PowerNotificationWarnings(Landroid/content/DialogInterface;I)V

    return-void
.end method
