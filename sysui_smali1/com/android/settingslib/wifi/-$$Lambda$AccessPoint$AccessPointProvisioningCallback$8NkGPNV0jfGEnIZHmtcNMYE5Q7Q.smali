.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$8NkGPNV0jfGEnIZHmtcNMYE5Q7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$8NkGPNV0jfGEnIZHmtcNMYE5Q7Q;->f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$8NkGPNV0jfGEnIZHmtcNMYE5Q7Q;->f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->lambda$onProvisioningComplete$2$AccessPoint$AccessPointProvisioningCallback()V

    return-void
.end method