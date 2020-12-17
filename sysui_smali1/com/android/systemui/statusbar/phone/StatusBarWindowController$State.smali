.class Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field backdropShowing:Z

.field bouncerShowing:Z

.field bubbleExpanded:Z

.field bubblesShowing:Z

.field dozing:Z

.field forceCollapsed:Z

.field forceDozeBrightness:Z

.field forceFaceRecognitionBrightness:Z

.field forceHasTopUi:Z

.field forcePluginOpen:Z

.field forceStatusBarVisible:Z

.field forceUserActivity:Z

.field headsUpShowing:Z

.field keyguardFadingAway:Z

.field keyguardGoingAway:Z

.field keyguardNeedsInput:Z

.field keyguardOccluded:Z

.field keyguardShowing:Z

.field notTouchable:Z

.field panelExpanded:Z

.field panelVisible:Z

.field qsExpanded:Z

.field remoteInputActive:Z

.field scrimsVisibility:I

.field statusBarFocusable:Z

.field statusBarState:I

.field wallpaperSupportsAmbientMode:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V
    .registers 2

    .line 670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z
    .registers 1

    .line 670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .registers 2

    .line 707
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window State {"

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 720
    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_39

    aget-object v5, v2, v4

    const-string v6, "  "

    .line 721
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :try_start_20
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 724
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_33} :catch_33

    .line 729
    :catch_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_39
    const-string/jumbo p0, "}"

    .line 731
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
