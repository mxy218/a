.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;->f$0:Lcom/android/settings/wifi/WifiConfigController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;->f$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->lambda$afterTextChanged$0$WifiConfigController()V

    return-void
.end method
