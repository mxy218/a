.class public final synthetic Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/HardwareUiLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/HardwareUiLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;->f$0:Lcom/android/systemui/HardwareUiLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;->f$0:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->lambda$onLayout$2$HardwareUiLayout()V

    return-void
.end method
