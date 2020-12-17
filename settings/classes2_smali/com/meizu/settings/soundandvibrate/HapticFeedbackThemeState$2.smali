.class Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$2;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$2;->this$0:Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;)I
    .registers 3

    .line 84
    iget p0, p1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->rank:I

    iget p1, p2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;->rank:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 81
    check-cast p1, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    check-cast p2, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$2;->compare(Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;)I

    move-result p0

    return p0
.end method
