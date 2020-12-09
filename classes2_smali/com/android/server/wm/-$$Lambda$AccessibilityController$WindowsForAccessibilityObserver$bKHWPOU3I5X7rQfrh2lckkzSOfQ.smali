.class public final synthetic Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$populateVisibleWindowsOnScreenLocked$1$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
