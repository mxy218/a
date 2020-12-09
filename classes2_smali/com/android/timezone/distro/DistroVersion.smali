.class public Lcom/android/timezone/distro/DistroVersion;
.super Ljava/lang/Object;
.source "DistroVersion.java"


# static fields
.field public static final DISTRO_VERSION_FILE_LENGTH:I

.field private static final DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_STRING_LENGTH:I

.field private static final REVISION_LENGTH:I = 0x3

.field private static final REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULES_VERSION_LENGTH:I = 0x5

.field private static final RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final SAMPLE_FORMAT_VERSION_STRING:Ljava/lang/String;


# instance fields
.field public final formatMajorVersion:I

.field public final formatMinorVersion:I

.field public final revision:I

.field public final rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->SAMPLE_FORMAT_VERSION_STRING:Ljava/lang/String;

    .line 32
    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->SAMPLE_FORMAT_VERSION_STRING:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    .line 34
    const-string v1, "(\\d{3})\\.(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v1, "(\\d{4}\\w)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string v1, "(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    sget v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    sput v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result p1

    iput p1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 68
    invoke-static {p2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result p1

    iput p1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    .line 69
    sget-object p1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 72
    iput-object p3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 73
    invoke-static {p4}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result p1

    iput p1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 74
    return-void

    .line 70
    :cond_24
    new-instance p1, Lcom/android/timezone/distro/DistroException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid rulesVersion: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static from3DigitVersionString(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "versionString must be a zero padded, 3 digit, positive decimal integer"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 174
    :try_start_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 175
    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_11} :catch_12

    return p0

    .line 176
    :catch_12
    move-exception p0

    .line 177
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    invoke-direct {v0, v1, p0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 171
    :cond_19
    new-instance p0, Lcom/android/timezone/distro/DistroException;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromBytes([B)Lcom/android/timezone/distro/DistroVersion;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 77
    const-string v0, "\""

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 79
    :try_start_9
    sget-object p0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 84
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v5, Lcom/android/timezone/distro/DistroVersion;

    .line 89
    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-static {v3}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v5, v2, v3, v4, p0}, Lcom/android/timezone/distro/DistroVersion;-><init>(IILjava/lang/String;I)V

    .line 88
    return-object v5

    .line 81
    :cond_3b
    new-instance p0, Lcom/android/timezone/distro/DistroException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid distro version string: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_55
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_55} :catch_55

    .line 93
    :catch_55
    move-exception p0

    .line 95
    new-instance p0, Lcom/android/timezone/distro/DistroException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distro version string too short: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static to3DigitVersionString(I)Ljava/lang/String;
    .registers 5

    .line 158
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    .line 159
    :catch_17
    move-exception p0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toBytes(IILjava/lang/String;I)[B
    .registers 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p3}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 106
    return-object p0
.end method

.method private static toFormatVersionString(II)Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    return-object p0
.end method

.method private static validate3DigitVersion(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 183
    if-ltz p0, :cond_7

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_7

    .line 186
    return p0

    .line 184
    :cond_7
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 113
    if-ne p0, p1, :cond_4

    .line 114
    const/4 p1, 0x1

    return p1

    .line 116
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_32

    .line 120
    :cond_12
    check-cast p1, Lcom/android/timezone/distro/DistroVersion;

    .line 122
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v2, p1, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-eq v1, v2, :cond_1b

    .line 123
    return v0

    .line 125
    :cond_1b
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget v2, p1, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-eq v1, v2, :cond_22

    .line 126
    return v0

    .line 128
    :cond_22
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    iget v2, p1, Lcom/android/timezone/distro/DistroVersion;->revision:I

    if-eq v1, v2, :cond_29

    .line 129
    return v0

    .line 131
    :cond_29
    iget-object v0, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 117
    :cond_32
    :goto_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 136
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    add-int/2addr v0, v1

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    add-int/2addr v0, v1

    .line 140
    return v0
.end method

.method public toBytes()[B
    .registers 5

    .line 100
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/timezone/distro/DistroVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formatMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
