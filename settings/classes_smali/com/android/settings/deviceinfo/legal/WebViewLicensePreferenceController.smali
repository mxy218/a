.class public Lcom/android/settings/deviceinfo/legal/WebViewLicensePreferenceController;
.super Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;
.source "WebViewLicensePreferenceController.java"


# static fields
.field private static final INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WEBVIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/legal/WebViewLicensePreferenceController;->INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getIntent()Landroid/content/Intent;
    .registers 1

    .line 30
    sget-object p0, Lcom/android/settings/deviceinfo/legal/WebViewLicensePreferenceController;->INTENT:Landroid/content/Intent;

    return-object p0
.end method
