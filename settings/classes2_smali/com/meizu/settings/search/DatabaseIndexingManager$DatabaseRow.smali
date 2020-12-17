.class public Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/DatabaseIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseRow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;
    }
.end annotation


# instance fields
.field public final childClassName:Ljava/lang/String;

.field public final className:Ljava/lang/String;

.field public final enabled:Z

.field public final entries:Ljava/lang/String;

.field public final iconResId:I

.field public final intentAction:Ljava/lang/String;

.field public final intentTargetClass:Ljava/lang/String;

.field public final intentTargetPackage:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field public final normalizedSummaryOff:Ljava/lang/String;

.field public final normalizedSummaryOn:Ljava/lang/String;

.field public final normalizedTitle:Ljava/lang/String;

.field public final payload:[B

.field public final payloadType:I

.field public final rank:I

.field public final screenTitle:Ljava/lang/String;

.field public final spaceDelimitedKeywords:Ljava/lang/String;

.field public final updatedSummaryOff:Ljava/lang/String;

.field public final updatedSummaryOn:Ljava/lang/String;

.field public final updatedTitle:Ljava/lang/String;

.field public final userId:I


# direct methods
.method private constructor <init>(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)V
    .registers 3

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->locale:Ljava/lang/String;

    .line 1106
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    .line 1107
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$200(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    .line 1108
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$300(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    .line 1109
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$400(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    .line 1110
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$500(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    .line 1111
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$600(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    .line 1112
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$700(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->entries:Ljava/lang/String;

    .line 1113
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$800(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    .line 1114
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$900(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    .line 1115
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    .line 1116
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->iconResId:I

    .line 1117
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1200(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->rank:I

    .line 1118
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1300(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->spaceDelimitedKeywords:Ljava/lang/String;

    .line 1119
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1400(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentAction:Ljava/lang/String;

    .line 1120
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1500(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    .line 1121
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1600(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    .line 1122
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1700(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->enabled:Z

    .line 1123
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1800(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    .line 1124
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$1900(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->userId:I

    .line 1125
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$2000(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->payloadType:I

    .line 1126
    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$2100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/meizu/settings/search/ResultPayload;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-static {p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->access$2100(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/meizu/settings/search/ResultPayload;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/search/ResultPayloadUtils;->marshall(Lcom/meizu/settings/search/ResultPayload;)[B

    move-result-object p1

    goto :goto_91

    :cond_90
    const/4 p1, 0x0

    .line 1127
    :goto_91
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->payload:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Lcom/meizu/settings/search/DatabaseIndexingManager$1;)V
    .registers 3

    .line 1080
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;-><init>(Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;)V

    return-void
.end method


# virtual methods
.method public getDocId()I
    .registers 4

    .line 1136
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1137
    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    goto :goto_2a

    .line 1138
    :cond_24
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_2a
    return p0
.end method
