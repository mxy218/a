.class Lcom/android/settings/accessibility/AccessibilitySettings$3;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    return-void
.end method
