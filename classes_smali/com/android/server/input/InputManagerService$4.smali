.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$d:Landroid/view/InputDevice;

.field final synthetic val$layouts:Ljava/util/List;

.field final synthetic val$systemLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .registers 5

    .line 866
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 7

    .line 872
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {p2}, Landroid/view/InputDevice;->getVendorId()I

    move-result p2

    if-ne p1, p2, :cond_3a

    .line 873
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {p2}, Landroid/view/InputDevice;->getProductId()I

    move-result p2

    if-eq p1, p2, :cond_19

    goto :goto_3a

    .line 876
    :cond_19
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 877
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result p2

    .line 878
    const/4 v0, 0x0

    :goto_22
    if-ge v0, p2, :cond_39

    .line 879
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->access$800(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 880
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    goto :goto_39

    .line 878
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 884
    :cond_39
    :goto_39
    return-void

    .line 874
    :cond_3a
    :goto_3a
    return-void
.end method
