.class Lcom/meizu/settings/security/ScreenPinningSettings$1;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/ScreenPinningSettings;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/ScreenPinningSettings;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/meizu/settings/security/ScreenPinningSettings$1;->this$0:Lcom/meizu/settings/security/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/meizu/settings/security/ScreenPinningSettings$1;->this$0:Lcom/meizu/settings/security/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->access$000(Lcom/meizu/settings/security/ScreenPinningSettings;Z)Z

    move-result p0

    return p0
.end method
