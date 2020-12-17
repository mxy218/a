.class Lcom/android/systemui/statusbar/KeyboardShortcuts$2;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/KeyboardShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I
    .registers 6

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_19

    .line 109
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    move p0, v0

    goto :goto_1a

    :cond_19
    :goto_19
    move p0, v1

    .line 110
    :goto_1a
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 111
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v0

    goto :goto_32

    :cond_31
    :goto_31
    move v2, v1

    :goto_32
    if-eqz p0, :cond_37

    if-eqz v2, :cond_37

    return v0

    :cond_37
    if-eqz p0, :cond_3a

    return v1

    :cond_3a
    if-eqz v2, :cond_3e

    const/4 p0, -0x1

    return p0

    .line 121
    :cond_3e
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 105
    check-cast p1, Landroid/view/KeyboardShortcutInfo;

    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I

    move-result p0

    return p0
.end method
