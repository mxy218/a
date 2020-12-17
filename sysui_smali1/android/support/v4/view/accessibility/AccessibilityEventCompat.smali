.class public final Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# direct methods
.method public static asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 284
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 4

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 265
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_9
    return-void
.end method
