.class public final Lcom/google/android/setupcompat/logging/CustomEvent;
.super Ljava/lang/Object;
.source "CustomEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/logging/CustomEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_STR_LENGTH:I = 0x32
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_BUNDLE_KEY_LENGTH:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field private final persistableBundle:Landroid/os/PersistableBundle;

.field private final piiValues:Landroid/os/PersistableBundle;

.field private final timestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/google/android/setupcompat/logging/CustomEvent$1;

    invoke-direct {v0}, Lcom/google/android/setupcompat/logging/CustomEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .registers 9

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "Timestamp cannot be negative."

    .line 173
    invoke-static {v0, v2}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const-string v0, "MetricKey cannot be null."

    .line 174
    invoke-static {p3, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Bundle cannot be null."

    .line 175
    invoke-static {p4, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "Bundle cannot be empty."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const-string/jumbo v0, "piiValues cannot be null."

    .line 177
    invoke-static {p5, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    invoke-static {p4}, Lcom/google/android/setupcompat/logging/CustomEvent;->assertPersistableBundleIsValid(Landroid/os/PersistableBundle;)V

    .line 179
    iput-wide p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    .line 180
    iput-object p3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 181
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    .line 182
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p5}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Lcom/google/android/setupcompat/logging/CustomEvent$1;)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private static assertPersistableBundleIsValid(Landroid/os/PersistableBundle;)V
    .registers 8

    .line 191
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    const/16 v3, 0x32

    const-string v4, "bundle key"

    .line 192
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/setupcompat/internal/Validations;->assertLengthInRange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 193
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 194
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v3, :cond_30

    move v2, v4

    goto :goto_31

    :cond_30
    move v2, v5

    :goto_31
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    const-string v1, "Maximum length of string value for key=\'%s\' cannot exceed %s."

    .line 197
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v2, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    goto :goto_8

    :cond_46
    return-void
.end method

.method public static create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;
    .registers 4

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "The constructor only support on sdk Q or higher."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 70
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    invoke-static {p0, p1, v0}, Lcom/google/android/setupcompat/logging/CustomEvent;->create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;
    .registers 11

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "The constructor only support on sdk Q or higher"

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 55
    new-instance v0, Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 56
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInMillis()J

    move-result-wide v3

    .line 61
    invoke-static {p1}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    .line 62
    invoke-static {p2}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public static toBundle(Lcom/google/android/setupcompat/logging/CustomEvent;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "CustomEvent cannot be null"

    .line 84
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CustomEvent_version"

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis()J

    move-result-wide v1

    const-string v3, "CustomEvent_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey()Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/logging/MetricKey;->fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CustomEvent_metricKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/CustomEvent;->values()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CustomEvent_bundleValues"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "CustomEvent_pii_bundleValues"

    .line 90
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 153
    :cond_4
    instance-of v1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 156
    :cond_a
    check-cast p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 157
    iget-wide v3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    iget-wide v5, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 158
    invoke-static {v1, v3}, Lcom/google/android/setupcompat/util/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    .line 159
    invoke-static {v1, v3}, Lcom/google/android/setupcompat/internal/PersistableBundles;->equals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    .line 160
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/PersistableBundles;->equals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    iget-wide v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ObjectUtils;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public metricKey()Lcom/google/android/setupcompat/logging/MetricKey;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-object p0
.end method

.method public piiValues()Landroid/os/PersistableBundle;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public timestampMillis()J
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    return-wide v0
.end method

.method public values()Landroid/os/PersistableBundle;
    .registers 2

    .line 124
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 142
    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object p2, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 145
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
