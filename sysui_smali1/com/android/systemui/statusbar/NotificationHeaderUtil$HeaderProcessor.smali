.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderProcessor"
.end annotation


# instance fields
.field private final mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

.field private final mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private final mId:I

.field private final mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V
    .registers 6

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    .line 279
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 280
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 281
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    .line 282
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public static forTextView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    .registers 9

    .line 272
    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$300()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$400()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    return-object v6
.end method
