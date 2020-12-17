.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$4txspd2k9690Zl1mH2vq8SlVnLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$4txspd2k9690Zl1mH2vq8SlVnLQ;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$4txspd2k9690Zl1mH2vq8SlVnLQ;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->lambda$startScanning$0$BluetoothControllerImpl()V

    return-void
.end method
