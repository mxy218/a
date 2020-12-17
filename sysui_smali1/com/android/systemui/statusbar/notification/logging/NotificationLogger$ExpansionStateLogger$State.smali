.class Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;
.super Ljava/lang/Object;
.source "NotificationLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mIsExpanded:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsUserAction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsVisible:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V
    .registers 2

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .registers 3

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 541
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 542
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 543
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V
    .registers 3

    .line 527
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)Z
    .registers 1

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->isFullySet()Z

    move-result p0

    return p0
.end method

.method private isFullySet()Z
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
