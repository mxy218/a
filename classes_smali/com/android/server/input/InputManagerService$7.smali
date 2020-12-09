.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .registers 6

    .line 1137
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p5, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 7

    .line 1145
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_1d

    aget-object v1, p1, v0

    .line 1146
    if-eqz v1, :cond_1a

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1147
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    return-void

    .line 1145
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1155
    :cond_1d
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result p2

    if-ne p1, p2, :cond_47

    .line 1156
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p2

    if-ne p1, p2, :cond_47

    .line 1157
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez p1, :cond_41

    .line 1158
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    .line 1159
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1161
    :cond_41
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1162
    :cond_47
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5d

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    if-ne p1, p2, :cond_5d

    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez p1, :cond_5d

    .line 1164
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_5d
    :goto_5d
    return-void
.end method
