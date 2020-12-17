.class public final Lcom/google/android/setupcompat/logging/MetricKey;
.super Ljava/lang/Object;
.source "MetricKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/logging/MetricKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final name:Ljava/lang/String;

.field private final screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/google/android/setupcompat/logging/MetricKey$1;

    invoke-direct {v0}, Lcom/google/android/setupcompat/logging/MetricKey$1;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "^[a-zA-Z][a-zA-Z0-9_]+"

    .line 147
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/setupcompat/logging/MetricKey$1;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/logging/MetricKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "MetricKey cannot be null."

    .line 67
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MetricKey_version"

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/MetricKey;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MetricKey_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/MetricKey;->screenName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MetricKey_screenName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/logging/MetricKey;
    .registers 5
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const-string v1, "MetricKey.name"

    const/16 v2, 0x1e

    .line 53
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/setupcompat/internal/Validations;->assertLengthInRange(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "MetricKey.screenName"

    const/16 v2, 0x32

    .line 54
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/setupcompat/internal/Validations;->assertLengthInRange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 56
    sget-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Invalid MetricKey, only alpha numeric characters are allowed."

    .line 56
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 59
    sget-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 59
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 62
    new-instance v0, Lcom/google/android/setupcompat/logging/MetricKey;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/logging/MetricKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    instance-of v1, p1, Lcom/google/android/setupcompat/logging/MetricKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 125
    :cond_a
    check-cast p1, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 126
    iget-object v1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/setupcompat/util/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 127
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ObjectUtils;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public screenName()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 113
    iget-object p2, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
